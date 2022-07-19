.class final Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$2;
.super Landroid/database/DataSetObserver;
.source "AUPinnedSectionListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;

    .line 152
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$2;->a:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$2;->a:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->recreatePinnedShadow()V

    .line 156
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$2;->a:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->recreatePinnedShadow()V

    .line 163
    return-void
.end method
