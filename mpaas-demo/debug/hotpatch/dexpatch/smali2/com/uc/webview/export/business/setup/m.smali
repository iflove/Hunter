.class final Lcom/uc/webview/export/business/setup/m;
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
.field final synthetic a:Lcom/uc/webview/export/business/setup/a;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/business/setup/a;)V
    .locals 1

    .line 169
    iput-object p1, p0, Lcom/uc/webview/export/business/setup/m;->a:Lcom/uc/webview/export/business/setup/a;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 171
    const-string p1, "be_init_success"

    const-string v0, "success"

    invoke-virtual {p0, p1, v0}, Lcom/uc/webview/export/business/setup/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string p1, "die_delegate"

    const-string v0, "die"

    invoke-virtual {p0, p1, v0}, Lcom/uc/webview/export/business/setup/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    return-void
.end method
