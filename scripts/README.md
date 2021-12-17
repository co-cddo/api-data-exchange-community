# Utility scripts

## `api-community-links.rb`

A utility script to make sharing links with the APIDX community on Slack easier, as it includes tracking metadata for the links.

```sh
# if a previously written file with text
./api-community-links.rb < message.txt
# or to compose content yourself
./api-community-links.rb
... enter text here
then type ^D (ctrl-d) to exit
```

It will then output the response to the console, with links including tracking metadata.
