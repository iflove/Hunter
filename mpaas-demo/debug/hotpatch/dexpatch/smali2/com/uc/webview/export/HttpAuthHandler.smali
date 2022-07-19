.class public Lcom/uc/webview/export/HttpAuthHandler;
.super Landroid/os/Handler;
.source "U4Source"


# instance fields
.field public mHandler:Landroid/webkit/HttpAuthHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/webview/export/HttpAuthHandler;->mHandler:Landroid/webkit/HttpAuthHandler;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/uc/webview/export/HttpAuthHandler;->mHandler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 39
    return-void
.end method

.method public proceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/uc/webview/export/HttpAuthHandler;->mHandler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public suppressDialog()Z
    .locals 1

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public useHttpAuthUsernamePassword()Z
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/uc/webview/export/HttpAuthHandler;->mHandler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0}, Landroid/webkit/HttpAuthHandler;->useHttpAuthUsernamePassword()Z

    move-result v0

    return v0
.end method
