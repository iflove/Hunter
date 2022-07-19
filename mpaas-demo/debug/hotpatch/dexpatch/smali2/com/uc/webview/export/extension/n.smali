.class final Lcom/uc/webview/export/extension/n;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Lcom/uc/webview/export/utility/download/UpdateTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/Map;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    .line 1495
    iput-object p1, p0, Lcom/uc/webview/export/extension/n;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/uc/webview/export/extension/n;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 1495
    nop

    .line 2498
    const-string p1, "sdk_vdls"

    invoke-static {p1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 2499
    iget-object p1, p0, Lcom/uc/webview/export/extension/n;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/uc/webview/export/extension/n;->b:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/uc/webview/export/extension/UCCore;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 1495
    return-void
.end method
