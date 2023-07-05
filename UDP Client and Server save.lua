local serverIP = "127.0.0.1";
local serverPort = 1234;

local server = network.Socket("UDP");
local client = network.Socket("UDP");

if server:Bind(serverIP, serverPort) then
    print("Socket bound to port " .. serverPort);
end

local size = client:SendTo(serverIP, serverPort, "Hello!");

if size > 0 then
    print("Sent " .. size .. " bytes");
end

callbacks.Register("Draw", function()
    local msg, ip, port = server:RecvFrom("0.0.0.0", 0, 100);

    if msg then
        print("Received message from " .. ip .. ":" .. port .. ": " .. msg);
    end
end)
