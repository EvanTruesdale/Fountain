import asyncio
import websockets

async def echo(websocket):
    while True:
        message = await websocket.recv()
        print(message)

async def main():
    async with websockets.serve(echo, "localhost", 8080):
        await asyncio.Future()

if __name__ == "__main__":
    asyncio.run(main())