.class public Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ClientRect;
.super Ljava/lang/Object;
.source "ClientRect.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottom()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ClientRect;->a:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ClientRect;->b:I

    return v0
.end method

.method public getRight()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ClientRect;->c:I

    return v0
.end method

.method public getTop()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ClientRect;->d:I

    return v0
.end method

.method public setBottom(I)V
    .locals 0
    .param p1, "bottom"    # I

    .line 17
    iput p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ClientRect;->a:I

    .line 18
    return-void
.end method

.method public setLeft(I)V
    .locals 0
    .param p1, "left"    # I

    .line 25
    iput p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ClientRect;->b:I

    .line 26
    return-void
.end method

.method public setRight(I)V
    .locals 0
    .param p1, "right"    # I

    .line 33
    iput p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ClientRect;->c:I

    .line 34
    return-void
.end method

.method public setTop(I)V
    .locals 0
    .param p1, "top"    # I

    .line 41
    iput p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ClientRect;->d:I

    .line 42
    return-void
.end method
