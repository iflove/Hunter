.class final Lcom/uc/webview/export/internal/setup/am;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/am;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/am;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/ak;->b(Landroid/content/Context;)V

    .line 90
    return-void
.end method
