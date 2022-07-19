.class public Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppLiteProcessServiceImpl;
.super Ljava/lang/Object;
.source "TinyAppLiteProcessServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/tinyappcommon/api/TinyAppLiteProcessService;


# static fields
.field public static final INSTANCE:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppLiteProcessServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppLiteProcessServiceImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppLiteProcessServiceImpl;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppLiteProcessServiceImpl;->INSTANCE:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppLiteProcessServiceImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public isLiteProcess()Z
    .locals 1

    .line 19
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->isLiteProcess()Z

    move-result v0

    return v0
.end method

.method public replyDataToLiteProcess(Landroid/os/Messenger;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "what"    # I
    .param p3, "data"    # Landroid/os/Bundle;

    .line 31
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->isLiteProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCUtils;->replyDataToLiteProcess(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    .line 34
    :cond_0
    return-void
.end method

.method public sendDataToMainProcess(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 24
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCUtils;->sendDataToMainProcess(ILandroid/os/Bundle;)V

    .line 27
    :cond_0
    return-void
.end method
