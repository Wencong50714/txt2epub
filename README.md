I modify the project https://github.com/ystyle/kaf-cli and generate executable file `kaf-cli-auto`.

Then i write a shell script to automatically 
- find the txt files in directory
- generate corresponding epub one
- move txt files into txt folder

The executable file only suit for m1 mac.

If you want to use it at other platform, please recompile executable file from https://github.com/ystyle/kaf-cli.

For example, i want let this run in raspberrypi, i just compile it with command
`GOOS=linux GOARCH=arm64 GOARM=7 go build -ldflags "-s -w" -o kaf-cli-linux cmd/cli.go`
