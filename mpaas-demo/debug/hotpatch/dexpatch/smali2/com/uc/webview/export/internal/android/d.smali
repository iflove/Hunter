.class final Lcom/uc/webview/export/internal/android/d;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Lcom/uc/webview/export/JsPromptResult;


# instance fields
.field private a:Landroid/webkit/JsPromptResult;


# direct methods
.method constructor <init>(Landroid/webkit/JsPromptResult;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/d;->a:Landroid/webkit/JsPromptResult;

    .line 10
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/d;->a:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 15
    return-void
.end method

.method public final confirm()V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/d;->a:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->confirm()V

    .line 20
    return-void
.end method

.method public final confirm(Ljava/lang/String;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/d;->a:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 25
    return-void
.end method
