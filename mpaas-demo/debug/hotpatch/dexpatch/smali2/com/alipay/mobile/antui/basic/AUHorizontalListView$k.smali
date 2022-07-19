.class Lcom/alipay/mobile/antui/basic/AUHorizontalListView$k;
.super Ljava/lang/Object;
.source "AUHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
.end annotation


# instance fields
.field private a:I

.field final synthetic c:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V
    .locals 0

    .line 6235
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$k;->c:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 6235
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$k;-><init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 6239
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$k;->c:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # invokes: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$3000(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$k;->a:I

    .line 6240
    return-void
.end method

.method public final b()Z
    .locals 2

    .line 6243
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$k;->c:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$k;->c:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # invokes: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$3100(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$k;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
