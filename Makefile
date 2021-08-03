build:
	go mod tidy
	go mod vendor
	go build -o app ./main

clean:
	rm -f app
	go clean

run:
	rm -f app
	go clean
	go mod tidy
	go mod vendor
	go build -o app ./main
	./app

# run tests using
# ~/hardware-swap-bot> go test <path> -count=1 -v -run <test_name>