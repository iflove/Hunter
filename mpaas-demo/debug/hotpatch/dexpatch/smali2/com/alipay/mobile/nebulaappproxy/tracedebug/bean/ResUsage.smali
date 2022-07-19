.class public Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;
.super Ljava/lang/Object;
.source "ResUsage.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ClientRect;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientHeight()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->c:I

    return v0
.end method

.method public getClientRect()Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ClientRect;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->b:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ClientRect;

    return-object v0
.end method

.method public getClientWidth()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->d:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->g:I

    return v0
.end method

.method public getNaturalHeight()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->e:I

    return v0
.end method

.method public getNaturalWidth()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->f:I

    return v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->h:I

    return v0
.end method

.method public isCss()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->i:Z

    return v0
.end method

.method public isPicture()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->j:Z

    return v0
.end method

.method public isUsesObjectFit()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->k:Z

    return v0
.end method

.method public setClientHeight(I)V
    .locals 0
    .param p1, "clientHeight"    # I

    .line 47
    iput p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->c:I

    .line 48
    return-void
.end method

.method public setClientRect(Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ClientRect;)V
    .locals 0
    .param p1, "clientRect"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ClientRect;

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->b:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ClientRect;

    .line 40
    return-void
.end method

.method public setClientWidth(I)V
    .locals 0
    .param p1, "clientWidth"    # I

    .line 55
    iput p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->d:I

    .line 56
    return-void
.end method

.method public setCss(Z)V
    .locals 0
    .param p1, "css"    # Z

    .line 95
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->i:Z

    .line 96
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 79
    iput p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->g:I

    .line 80
    return-void
.end method

.method public setNaturalHeight(I)V
    .locals 0
    .param p1, "naturalHeight"    # I

    .line 63
    iput p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->e:I

    .line 64
    return-void
.end method

.method public setNaturalWidth(I)V
    .locals 0
    .param p1, "naturalWidth"    # I

    .line 71
    iput p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->f:I

    .line 72
    return-void
.end method

.method public setPicture(Z)V
    .locals 0
    .param p1, "picture"    # Z

    .line 103
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->j:Z

    .line 104
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0
    .param p1, "src"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->a:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setUsesObjectFit(Z)V
    .locals 0
    .param p1, "usesObjectFit"    # Z

    .line 111
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->k:Z

    .line 112
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 87
    iput p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->h:I

    .line 88
    return-void
.end method
