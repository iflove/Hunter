.class public abstract Lcom/alipay/mobile/nebula/webview/APWebMessagePort;
.super Ljava/lang/Object;
.source "APWebMessagePort.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/webview/APWebMessagePort$APWebMessageCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract postMessage(Lcom/alipay/mobile/nebula/webview/APWebMessage;)V
.end method

.method public abstract setWebMessageCallback(Lcom/alipay/mobile/nebula/webview/APWebMessagePort$APWebMessageCallback;)V
.end method

.method public abstract setWebMessageCallback(Lcom/alipay/mobile/nebula/webview/APWebMessagePort$APWebMessageCallback;Landroid/os/Handler;)V
.end method
