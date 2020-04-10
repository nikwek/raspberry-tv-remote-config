# Wall Mounted TV Control Center

If you are driving TVs with Raspberry Pis that are set up with [raspberry-tv-driver](https://github.com/librato/raspberry-tv-driver) you can now tell them to "dial home" and load the URL that is configured in this repo on startup. To make the Raspberry check this repo switch install the [start.sh](start.sh) from this repo in the home directory (replacing the existing one). 

## Map Raspberries to URLs

What you will need:

- The hostname of the Raspberry
- A URL

Edit the [config.json](config.json) file in this repo to configure the mapping of the URL to the hostname. The format is:

```
{
  "hostname":"http://myurl.com"
}
```
---

## Use Case: Display a an agenda or simple text messages

- Use Google docs
- Change the page orientation and size to landscape and Tabloid or A3 (to fill an HD TV screen)
- Create the content (write on the doc)
- Share it via the share button. Select “anyone with the link can view”
- Change the URL to force it to kiosk mode by adding `&embedded=true&rm=demo` at the end.

For example:

```
https://docs.google.com/document/d/1l1misecretcJ6t0/edit?usp=sharing&embedded=true&rm=demo
```

Edits are shown in real time on the TV. 
:boom:

Not all fonts available in Google Docs work in Firefox on the Pi. Ones that work are:
- Calibri
- Cambria
- Consolas
- Corsiva
- Droid Sans
- Droid Serief
- Open Sans
- Syncopate
- Ubuntu
