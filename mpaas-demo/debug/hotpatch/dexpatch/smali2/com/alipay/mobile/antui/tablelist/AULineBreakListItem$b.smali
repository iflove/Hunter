.class final Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$b;
.super Ljava/lang/Object;
.source "AULineBreakListItem.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;

.field private b:Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$a;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$a;)V
    .locals 0
    .param p2, "listener"    # Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$a;

    .line 135
    iput-object p1, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$b;->a:Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p2, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$b;->b:Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$a;

    .line 137
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$b;->b:Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$a;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$a;->a(Ljava/lang/String;)V

    .line 154
    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 142
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 147
    return-void
.end method
