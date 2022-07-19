.class final Lcom/uc/webview/export/internal/utility/l;
.super Ljava/util/HashMap;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 716
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 718
    const-string v0, "ro.build.hw_emui_api_level"

    const-string v1, "EMUI"

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/utility/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    const-string v0, "ro.miui.ui.version.name"

    const-string v1, "MIUI"

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/utility/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    const-string v0, "ro.build.version.opporom"

    const-string v1, "COLOROS"

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/utility/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    const-string v0, "ro.vivo.os.name"

    const-string v1, "FuntouchOS"

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/utility/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    const-string v0, "ro.yunos.version"

    const-string v1, "YunOS"

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/utility/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    const-string v0, "ro.flyme.published"

    const-string v1, "FLYME"

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/utility/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    const-string v0, "ro.meizu.product.model"

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/utility/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    return-void
.end method
