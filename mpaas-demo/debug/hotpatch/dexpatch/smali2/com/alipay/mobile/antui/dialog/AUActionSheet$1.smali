.class final Lcom/alipay/mobile/antui/dialog/AUActionSheet$1;
.super Ljava/lang/Object;
.source "AUActionSheet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/dialog/AUActionSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/dialog/AUActionSheet;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/dialog/AUActionSheet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/dialog/AUActionSheet;

    .line 91
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet$1;->a:Lcom/alipay/mobile/antui/dialog/AUActionSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet$1;->a:Lcom/alipay/mobile/antui/dialog/AUActionSheet;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->dismiss()V

    .line 95
    return-void
.end method
