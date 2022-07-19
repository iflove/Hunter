.class public interface abstract Lcom/alipay/mobile/nebulax/kernel/node/Node;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/alipay/mobile/nebulax/kernel/security/Accessor;


# virtual methods
.method public abstract getChild(J)Lcom/alipay/mobile/nebulax/kernel/node/Node;
.end method

.method public abstract getChildAt(I)Lcom/alipay/mobile/nebulax/kernel/node/Node;
.end method

.method public abstract getChildCount()I
.end method

.method public abstract getNodeId()J
.end method

.method public abstract getParentNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;
.end method

.method public abstract isChildless()Z
.end method

.method public abstract onFinalized()V
.end method

.method public abstract onInitialized()V
.end method

.method public abstract peekChild()Lcom/alipay/mobile/nebulax/kernel/node/Node;
.end method

.method public abstract popChild()Lcom/alipay/mobile/nebulax/kernel/node/Node;
.end method

.method public abstract pushChild(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
.end method

.method public abstract removeChild(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Z
.end method

.method public abstract setParentNode(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
.end method
