#!/usr/bin/env bash

# Set the tag (base directory) as the required first parameter
tag="$1"

# Validate that the required parameter is provided
if [[ -z "$tag" ]]; then
  echo "Usage: $0 <base_directory> [year] [month] [day]"
  exit 1
fi

# Set optional parameters for year, month, and day, defaulting to today's date if not provided
year="${2:-$(date +"%Y")}"
month_num="${3:-$(date +"%m")}"
month_name=$(date -d "$year-$month_num-01" +"%B") # Month full name based on the year and month
month_short=$(date -d "$year-$month_num-01" +"%b") # Month short name
day="${4:-$(date +"%d")}"

# Function to create a file if it doesn't already exist, with content passed as a "here document"
create_file_if_not_exists() {
  local path="$1"
  local content="$2"
  local dir_path=$(dirname "$path")

  if [[ -f "$path" ]]; then
    echo "File already exists: $path"
  else
    mkdir -p "$dir_path"
    cat <<EOF > "$path"
$content
EOF
    echo "File created: $path"
  fi
}

# Define file paths and contents using here-documents
create_file_if_not_exists "./$tag/index.html" "---
layout: list_pages
title: All $tag Posts
---"

create_file_if_not_exists "./$tag/${year}/index.html" "---
layout: list_pages
title: All $tag Posts in ${year}
---"

create_file_if_not_exists "./$tag/${year}/${month_num}/index.html" "---
layout: list_pages
title: All $tag Posts in ${month_name} ${year}
---"

create_file_if_not_exists "_posts/${year}/${month_short}/${year}-${month_num}-${day}-index.md" "---
layout: signoff_post
title:  \"Title\"
date:   ${year}-${month_num}-${day}
categories: $tag
---
"

create_file_if_not_exists "./all/index.html" "---
layout: list_pages
title: All Posts
---"

create_file_if_not_exists "./all/${year}/index.html" "---
layout: list_pages
title: All Posts in ${year}
---"