.class final Lcom/uc/webview/export/business/setup/n;
.super Ljava/util/HashMap;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/business/setup/a;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/business/setup/a;)V
    .locals 2

    .line 298
    iput-object p1, p0, Lcom/uc/webview/export/business/setup/n;->a:Lcom/uc/webview/export/business/setup/a;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 300
    const-string v0, "bo_init_type"

    const-string v1, "bit_by_new_zip_file"

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/business/setup/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v0, "bo_new_ucm_z_type"

    invoke-static {p1, v0}, Lcom/uc/webview/export/business/setup/a;->d(Lcom/uc/webview/export/business/setup/a;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "o_zio_file_type"

    invoke-virtual {p0, v1, v0}, Lcom/uc/webview/export/business/setup/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v0, "dexFilePath"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/business/setup/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-static {p1}, Lcom/uc/webview/export/business/setup/a;->n(Lcom/uc/webview/export/business/setup/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    const-string v0, "bo_new_ucm_zf"

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ucmZipFile"

    invoke-virtual {p0, v0, p1}, Lcom/uc/webview/export/business/setup/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    return-void
.end method
