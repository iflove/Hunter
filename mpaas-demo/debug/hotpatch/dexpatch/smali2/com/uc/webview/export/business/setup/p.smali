.class final Lcom/uc/webview/export/business/setup/p;
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
.field final a:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Lcom/uc/webview/export/utility/SetupTask;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Ljava/util/Map$Entry;

.field final synthetic c:Lcom/uc/webview/export/business/setup/o;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/business/setup/o;Ljava/util/Map$Entry;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/uc/webview/export/business/setup/p;->c:Lcom/uc/webview/export/business/setup/o;

    iput-object p2, p0, Lcom/uc/webview/export/business/setup/p;->b:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/webkit/ValueCallback;

    iput-object p1, p0, Lcom/uc/webview/export/business/setup/p;->a:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 75
    nop

    .line 1079
    iget-object p1, p0, Lcom/uc/webview/export/business/setup/p;->a:Landroid/webkit/ValueCallback;

    iget-object v0, p0, Lcom/uc/webview/export/business/setup/p;->c:Lcom/uc/webview/export/business/setup/o;

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 75
    return-void
.end method
