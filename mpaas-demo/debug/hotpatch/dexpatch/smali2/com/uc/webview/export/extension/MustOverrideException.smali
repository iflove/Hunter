.class public Lcom/uc/webview/export/extension/MustOverrideException;
.super Ljava/lang/RuntimeException;
.source "U4Source"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    const-string v0, "abstract function called: must be overriden!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method
