.class public abstract Lcom/alipay/mobile/nebula/webview/APWebMessagePort$APWebMessageCallback;
.super Ljava/lang/Object;
.source "APWebMessagePort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/webview/APWebMessagePort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "APWebMessageCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Lcom/alipay/mobile/nebula/webview/APWebMessagePort;Lcom/alipay/mobile/nebula/webview/APWebMessage;)V
    .locals 0
    .param p1, "port"    # Lcom/alipay/mobile/nebula/webview/APWebMessagePort;
    .param p2, "message"    # Lcom/alipay/mobile/nebula/webview/APWebMessage;

    .line 66
    return-void
.end method
