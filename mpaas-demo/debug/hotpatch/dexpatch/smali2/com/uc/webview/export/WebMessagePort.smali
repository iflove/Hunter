.class public abstract Lcom/uc/webview/export/WebMessagePort;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/WebMessagePort$WebMessageCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract postMessage(Lcom/uc/webview/export/WebMessage;)V
.end method

.method public abstract setWebMessageCallback(Lcom/uc/webview/export/WebMessagePort$WebMessageCallback;)V
.end method

.method public abstract setWebMessageCallback(Lcom/uc/webview/export/WebMessagePort$WebMessageCallback;Landroid/os/Handler;)V
.end method
