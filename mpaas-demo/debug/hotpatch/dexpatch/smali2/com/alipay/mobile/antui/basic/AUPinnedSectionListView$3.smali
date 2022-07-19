.class final Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$3;
.super Ljava/lang/Object;
.source "AUPinnedSectionListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
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

    .line 403
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$3;->a:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$3;->a:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->recreatePinnedShadow()V

    .line 407
    return-void
.end method
