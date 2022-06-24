import crafttweaker.events.IEventManager;
 
import crafttweaker.event.CommandEvent;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.event.PlayerLoggedOutEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.command.ICommand;
import crafttweaker.text.ITextComponent;

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent){  
    var player as IPlayer = event.player;  
    if(player.creative){  
        server.commandManager.executeCommand(server,"/gamestage add "+player.name+" creative");  
    }
});

events.onCommand(function(event as CommandEvent){  
    if(event.commandSender instanceof IPlayer){  
        var player as IPlayer = event.commandSender;  
        if(player.hasGameStage("creative") || player.name == "Lonelywjx || Lonelyxiya"){
            return ; 

        if (!event.commandSender.world.remote && event.command.name == "ftbquests" ) return; 
        }
        if(!event.commandSender.world.remote){ 
            event.cancel();  
            player.sendRichTextMessage(ITextComponent.fromTranslation("ftvotscraft.event.in_cheat.1", player.name)); 
    }}
});

