.class final Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;
.super Ljava/lang/Object;
.source "AUPullRefreshView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/basic/AUPullRefreshView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/basic/AUPullRefreshView;

.field private final b:Landroid/widget/Scroller;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/antui/basic/AUPullRefreshView;)V
    .locals 1

    .line 203
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;->a:Lcom/alipay/mobile/antui/basic/AUPullRefreshView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;->b:Landroid/widget/Scroller;

    .line 205
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;->d:Z

    .line 206
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 7
    .param p1, "dis"    # I

    .line 222
    if-gtz p1, :cond_0

    .line 223
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;->a:Lcom/alipay/mobile/antui/basic/AUPullRefreshView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;->c:I

    .line 226
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;->d:Z

    .line 227
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;->b:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x12c

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;->a:Lcom/alipay/mobile/antui/basic/AUPullRefreshView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->post(Ljava/lang/Runnable;)Z

    .line 229
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;->d:Z

    return v0
.end method

.method public final run()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 211
    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;->a:Lcom/alipay/mobile/antui/basic/AUPullRefreshView;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;->c:I

    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;->b:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    # invokes: Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->moveDown(IZ)Z
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->access$000(Lcom/alipay/mobile/antui/basic/AUPullRefreshView;IZ)Z

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;->c:I

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;->a:Lcom/alipay/mobile/antui/basic/AUPullRefreshView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 216
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;->d:Z

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;->a:Lcom/alipay/mobile/antui/basic/AUPullRefreshView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 219
    return-void
.end method
