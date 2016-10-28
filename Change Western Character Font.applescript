set cjkUnifiedIdeographsStart to 19968
set cjkUnifiedIdeographsEnd to 40959

choose from list {"Times New Roman", "Arial"} with prompt "This script will set the font of western characters. Choose a font first:"
set fontName to result as text

tell application "Pages"
    tell front document
        if document body is false then error number -1
        tell current page
            tell body text
                repeat with char in characters
                    set code to ((id of (char as string)) as string) as integer
                    if code < cjkUnifiedIdeographsStart or code > cjkUnifiedIdeographsEnd then
                        set font of char to fontName
                    end if
                end repeat
            end tell
        end tell
    end tell
end tell
