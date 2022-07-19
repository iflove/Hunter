.class Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;
.super Ljava/lang/Object;
.source "H5TabBarPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/nebulacore/ui/H5Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;Landroid/view/View;Landroid/view/View;ZZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;

    .line 220
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->f:Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->b:Landroid/view/View;

    iput-boolean p4, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->c:Z

    iput-boolean p5, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->d:Z

    iput-object p6, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 225
    .local v3, "containerParams":Landroid/view/ViewGroup$LayoutParams;
    move-object v3, v1

    if-eqz v1, :cond_3

    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x2

    if-eq v1, v4, :cond_3

    .line 226
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v5, v2

    .line 227
    .local v5, "contentParams":Landroid/view/ViewGroup$LayoutParams;
    move-object v5, v1

    if-eqz v1, :cond_0

    .line 228
    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 229
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->b:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    :cond_0
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 232
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->a:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v4, -0x70707

    if-nez v1, :cond_1

    .line 235
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->a:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 236
    :cond_1
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    .line 237
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    .line 238
    .local v2, "bgDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    if-nez v1, :cond_2

    .line 239
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->a:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 243
    .end local v2    # "bgDrawable":Landroid/graphics/drawable/ColorDrawable;
    .end local v5    # "contentParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    :goto_0
    move-object v2, v5

    :cond_3
    iget-boolean v1, v0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->c:Z

    const-string v4, "translate"

    const-string v5, "alpha"

    const-wide/16 v6, 0x12c

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v1, :cond_6

    .line 244
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_a

    .line 245
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->b:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-boolean v1, v0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->d:Z

    if-eqz v1, :cond_a

    .line 247
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 248
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 249
    .local v2, "animationSet":Landroid/view/animation/AnimationSet;
    move-object v2, v1

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v8}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 250
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Landroid/view/animation/AnimationSet;->setStartTime(J)V

    .line 251
    invoke-virtual {v2, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 252
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->e:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 253
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 254
    .local v1, "alpha":Landroid/view/animation/Animation;
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 255
    .end local v1    # "alpha":Landroid/view/animation/Animation;
    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->e:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 256
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x2

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x2

    const/16 v19, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 259
    .local v1, "translate":Landroid/view/animation/Animation;
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 260
    .end local v1    # "translate":Landroid/view/animation/Animation;
    goto :goto_1

    .line 261
    :cond_5
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x2

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x2

    const/16 v19, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 264
    .restart local v1    # "translate":Landroid/view/animation/Animation;
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 265
    .local v4, "alpha":Landroid/view/animation/Animation;
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 266
    invoke-virtual {v2, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 268
    .end local v1    # "translate":Landroid/view/animation/Animation;
    .end local v4    # "alpha":Landroid/view/animation/Animation;
    :goto_1
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 269
    .end local v2    # "animationSet":Landroid/view/animation/AnimationSet;
    return-void

    .line 272
    :cond_6
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a

    .line 273
    iget-boolean v1, v0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->d:Z

    if-eqz v1, :cond_9

    .line 274
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 275
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 276
    .restart local v2    # "animationSet":Landroid/view/animation/AnimationSet;
    move-object v2, v1

    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v8}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 277
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Landroid/view/animation/AnimationSet;->setStartTime(J)V

    .line 278
    invoke-virtual {v2, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 279
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->e:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 280
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v10, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 281
    .local v1, "alpha":Landroid/view/animation/Animation;
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 282
    .end local v1    # "alpha":Landroid/view/animation/Animation;
    goto :goto_2

    :cond_7
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->e:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 283
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x2

    const/high16 v19, 0x3f800000    # 1.0f

    move-object v11, v1

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 286
    .local v1, "translate":Landroid/view/animation/Animation;
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 287
    .end local v1    # "translate":Landroid/view/animation/Animation;
    goto :goto_2

    .line 288
    :cond_8
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x2

    const/high16 v19, 0x3f800000    # 1.0f

    move-object v11, v1

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 291
    .restart local v1    # "translate":Landroid/view/animation/Animation;
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v10, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 292
    .restart local v4    # "alpha":Landroid/view/animation/Animation;
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 293
    invoke-virtual {v2, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 295
    .end local v1    # "translate":Landroid/view/animation/Animation;
    .end local v4    # "alpha":Landroid/view/animation/Animation;
    :goto_2
    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2$1;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 311
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 312
    .end local v2    # "animationSet":Landroid/view/animation/AnimationSet;
    return-void

    .line 313
    :cond_9
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->b:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 317
    :cond_a
    return-void
.end method
