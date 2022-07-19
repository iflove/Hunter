.class public interface abstract Lcom/uc/webview/export/media/MediaPlayerFactory;
.super Ljava/lang/Object;
.source "U4Source"


# virtual methods
.method public abstract create(ILandroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)Lcom/uc/webview/export/media/MediaPlayer;
.end method

.method public abstract createMediaController(ILandroid/content/Context;)Lcom/uc/webview/export/media/MediaController;
.end method

.method public abstract init(Landroid/content/Context;Lcom/uc/webview/export/media/Settings;Ljava/lang/String;)V
.end method

.method public abstract isMediaSupported(Ljava/lang/String;)Z
.end method

.method public abstract isTypeSupported(Ljava/lang/String;)Z
.end method

.method public abstract mediaControllerOnlyForSelfPlayer()Z
.end method

.method public abstract playerName()Ljava/lang/String;
.end method

.method public abstract typeSupports()[Ljava/lang/String;
.end method

.method public abstract valid()Z
.end method
