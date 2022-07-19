.class public Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;
.super Ljava/lang/Object;
.source "ShadowDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->e:I

    .line 156
    iput v0, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->f:I

    .line 160
    const/4 v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->a:I

    .line 161
    const/16 v2, 0xc

    iput v2, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->b:I

    .line 162
    const-string v2, "#4d000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->c:I

    .line 163
    const/16 v2, 0x12

    iput v2, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->d:I

    .line 164
    iput v0, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->e:I

    .line 165
    iput v0, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->f:I

    .line 166
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->g:[I

    .line 167
    aput v0, v1, v0

    .line 168
    return-void
.end method


# virtual methods
.method public builder()Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;
    .locals 10

    .line 211
    new-instance v9, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;

    iget v1, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->a:I

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->g:[I

    iget v3, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->b:I

    iget v4, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->c:I

    iget v5, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->d:I

    iget v6, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->e:I

    iget v7, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->f:I

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable;-><init>(I[IIIIIIB)V

    return-object v9
.end method

.method public setBgColor(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;
    .locals 2
    .param p1, "BgColor"    # I

    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->g:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 202
    return-object p0
.end method

.method public setBgColor([I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;
    .locals 0
    .param p1, "BgColor"    # [I

    .line 206
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->g:[I

    .line 207
    return-object p0
.end method

.method public setOffsetX(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;
    .locals 0
    .param p1, "OffsetX"    # I

    .line 191
    iput p1, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->e:I

    .line 192
    return-object p0
.end method

.method public setOffsetY(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;
    .locals 0
    .param p1, "OffsetY"    # I

    .line 196
    iput p1, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->f:I

    .line 197
    return-object p0
.end method

.method public setShadowColor(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;
    .locals 0
    .param p1, "shadowColor"    # I

    .line 181
    iput p1, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->c:I

    .line 182
    return-object p0
.end method

.method public setShadowRadius(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;
    .locals 0
    .param p1, "shadowRadius"    # I

    .line 186
    iput p1, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->d:I

    .line 187
    return-object p0
.end method

.method public setShape(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;
    .locals 0
    .param p1, "mShape"    # I

    .line 171
    iput p1, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->a:I

    .line 172
    return-object p0
.end method

.method public setShapeRadius(I)Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;
    .locals 0
    .param p1, "ShapeRadius"    # I

    .line 176
    iput p1, p0, Lcom/alipay/mobile/nebulacore/util/graphics/drawable/ShadowDrawable$Builder;->b:I

    .line 177
    return-object p0
.end method
