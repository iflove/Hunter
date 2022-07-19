.class final Lcom/uc/webview/export/internal/setup/s;
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


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/uc/webview/export/internal/setup/o;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/o;Z)V
    .locals 0

    .line 1042
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/s;->b:Lcom/uc/webview/export/internal/setup/o;

    iput-boolean p2, p0, Lcom/uc/webview/export/internal/setup/s;->a:Z

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1044
    if-eqz p2, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    const-string p2, "vmsize_saving_enable"

    invoke-virtual {p0, p2, p1}, Lcom/uc/webview/export/internal/setup/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    return-void
.end method
