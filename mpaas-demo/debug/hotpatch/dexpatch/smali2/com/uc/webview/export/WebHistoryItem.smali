.class public Lcom/uc/webview/export/WebHistoryItem;
.super Ljava/lang/Object;
.source "U4Source"


# instance fields
.field public mItem:Landroid/webkit/WebHistoryItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/webview/export/WebHistoryItem;->mItem:Landroid/webkit/WebHistoryItem;

    return-void
.end method


# virtual methods
.method protected declared-synchronized clone()Lcom/uc/webview/export/WebHistoryItem;
    .locals 1

    monitor-enter p0

    .line 61
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/uc/webview/export/WebHistoryItem;->clone()Lcom/uc/webview/export/WebHistoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/uc/webview/export/WebHistoryItem;->mItem:Landroid/webkit/WebHistoryItem;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/uc/webview/export/WebHistoryItem;->mItem:Landroid/webkit/WebHistoryItem;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/uc/webview/export/WebHistoryItem;->mItem:Landroid/webkit/WebHistoryItem;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/uc/webview/export/WebHistoryItem;->mItem:Landroid/webkit/WebHistoryItem;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
