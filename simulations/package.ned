package clientserverexample.simulations;

//import inet.networklayer.configurator.ipv4.Ipv4FlatNetworkConfigurator;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.inet.StandardHost;
@license(LGPL);
//
// TODO documentation
//
network Network
{
    @display("bgb=763,402");
    submodules:
        server: StandardHost {
            @display("p=201,161");
        }
        client: StandardHost {
            @display("p=609,160");
        }
        client1: StandardHost {
            @display("p=494,355");
        }
        client2: StandardHost {
            @display("p=658,242");
        }
        client3: StandardHost {
            @display("p=570,308");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=374,66");
        }
    connections:
        server.ethg++ <--> Eth100M <--> client.ethg++;
        server.ethg++ <--> Eth100M <--> client2.ethg++;
        server.ethg++ <--> Eth100M <--> client3.ethg++;
        server.ethg++ <--> Eth100M <--> client1.ethg++;
}

