.class final Lcom/uc/webview/export/extension/d;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Lcom/uc/webview/export/internal/setup/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/extension/c;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/extension/c;)V
    .locals 0

    .line 1278
    iput-object p1, p0, Lcom/uc/webview/export/extension/d;->a:Lcom/uc/webview/export/extension/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .line 1278
    check-cast p1, Lcom/uc/webview/export/internal/setup/l;

    .line 2281
    iget-object v0, p0, Lcom/uc/webview/export/extension/d;->a:Lcom/uc/webview/export/extension/c;

    iget-object v0, v0, Lcom/uc/webview/export/extension/c;->b:Ljava/util/Map;

    const-string v1, "updateProgress"

    invoke-static {v1, p1, v0}, Lcom/uc/webview/export/extension/UCCore;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 1278
    return-void
.end method
