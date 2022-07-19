.class public Lcom/alipay/mobile/nebula/webview/APWebMessage;
.super Ljava/lang/Object;
.source "APWebMessage.java"


# instance fields
.field private mData:Ljava/lang/String;

.field private mPorts:[Lcom/alipay/mobile/nebula/webview/APWebMessagePort;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/alipay/mobile/nebula/webview/APWebMessage;->mData:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/alipay/mobile/nebula/webview/APWebMessagePort;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "ports"    # [Lcom/alipay/mobile/nebula/webview/APWebMessagePort;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/nebula/webview/APWebMessage;->mData:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/alipay/mobile/nebula/webview/APWebMessage;->mPorts:[Lcom/alipay/mobile/nebula/webview/APWebMessagePort;

    .line 45
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebula/webview/APWebMessage;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getPorts()[Lcom/alipay/mobile/nebula/webview/APWebMessagePort;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebula/webview/APWebMessage;->mPorts:[Lcom/alipay/mobile/nebula/webview/APWebMessagePort;

    return-object v0
.end method
