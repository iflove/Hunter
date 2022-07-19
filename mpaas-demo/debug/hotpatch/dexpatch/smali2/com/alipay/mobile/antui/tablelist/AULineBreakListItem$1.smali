.class final Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$1;
.super Ljava/lang/Object;
.source "AULineBreakListItem.java"

# interfaces
.implements Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;

    .line 74
    iput-object p1, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$1;->a:Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$1;->a:Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;

    # getter for: Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->mRightText:Lcom/alipay/mobile/antui/basic/AUTextView;
    invoke-static {v0}, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->access$100(Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;)Lcom/alipay/mobile/antui/basic/AUTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    # setter for: Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->mLeftLength:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->access$002(Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;I)I

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$1;->a:Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;

    # invokes: Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->adjustWeight()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->access$200(Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;)V

    .line 80
    return-void
.end method
