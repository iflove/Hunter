.class public Lcom/alipay/mobile/nebulax/kernel/security/internal/DefaultAccessController;
.super Ljava/lang/Object;
.source "DefaultAccessController.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/kernel/security/AccessController;


# static fields
.field private static final TAG:Ljava/lang/String; = "NebulaXKernel:Permission"


# instance fields
.field private accessControlManagement:Lcom/alipay/mobile/nebulax/kernel/security/AccessControlManagement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private apply(Lcom/alipay/mobile/nebulax/kernel/security/Accessor;Ljava/util/List;Lcom/alipay/mobile/nebulax/kernel/security/AccessController$ApplyCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulax/kernel/security/Accessor;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/security/Permission;",
            ">;",
            "Lcom/alipay/mobile/nebulax/kernel/security/AccessController$ApplyCallback;",
            ")V"
        }
    .end annotation

    .line 126
    new-instance v0, Lcom/alipay/mobile/nebulax/kernel/security/internal/DefaultAccessController$1;

    invoke-direct {v0, p0, p3}, Lcom/alipay/mobile/nebulax/kernel/security/internal/DefaultAccessController$1;-><init>(Lcom/alipay/mobile/nebulax/kernel/security/internal/DefaultAccessController;Lcom/alipay/mobile/nebulax/kernel/security/AccessController$ApplyCallback;)V

    .line 137
    invoke-interface {p1, p2, v0}, Lcom/alipay/mobile/nebulax/kernel/security/Accessor;->inquiry(Ljava/util/List;Lcom/alipay/mobile/nebulax/kernel/security/Accessor$InquiryCallback;)V

    .line 138
    return-void
.end method

.method private check(Ljava/util/List;Lcom/alipay/mobile/nebulax/kernel/security/Permission;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/security/Permission;",
            ">;",
            "Lcom/alipay/mobile/nebulax/kernel/security/Permission;",
            ")Z"
        }
    .end annotation

    .line 98
    const/4 v0, 0x1

    if-eqz p2, :cond_3

    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission;->ALL:Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission;

    if-ne p2, v1, :cond_0

    goto :goto_1

    .line 101
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulax/kernel/security/Permission;

    .line 102
    invoke-interface {p2}, Lcom/alipay/mobile/nebulax/kernel/security/Permission;->authority()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/alipay/mobile/nebulax/kernel/security/Permission;->authority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    return v0

    .line 105
    :cond_1
    goto :goto_0

    .line 106
    :cond_2
    const/4 p1, 0x0

    return p1

    .line 99
    :cond_3
    :goto_1
    return v0
.end method

.method private checkGroup(Lcom/alipay/mobile/nebulax/kernel/security/Permission;Lcom/alipay/mobile/nebulax/kernel/security/Group;)Z
    .locals 3

    .line 110
    invoke-interface {p2}, Lcom/alipay/mobile/nebulax/kernel/security/Group;->groupName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;->INTERNAL:Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;->groupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 111
    return v1

    .line 113
    :cond_0
    invoke-interface {p2}, Lcom/alipay/mobile/nebulax/kernel/security/Group;->permissions()Ljava/util/List;

    move-result-object p2

    .line 114
    if-eqz p2, :cond_2

    .line 115
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/kernel/security/Permission;

    .line 116
    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/kernel/security/Permission;->authority()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/kernel/security/Permission;->authority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    return v1

    .line 119
    :cond_1
    goto :goto_0

    .line 121
    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public check(Lcom/alipay/mobile/nebulax/kernel/security/Accessor;Ljava/util/List;Lcom/alipay/mobile/nebulax/kernel/security/AccessController$ApplyCallback;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulax/kernel/security/Accessor;",
            "Ljava/util/List<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/security/Guard;",
            ">;",
            "Lcom/alipay/mobile/nebulax/kernel/security/AccessController$ApplyCallback;",
            ")Z"
        }
    .end annotation

    .line 38
    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/kernel/security/Accessor;->getGroup()Lcom/alipay/mobile/nebulax/kernel/security/Group;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/kernel/security/internal/DefaultAccessController;->accessControlManagement:Lcom/alipay/mobile/nebulax/kernel/security/AccessControlManagement;

    const/4 v2, 0x0

    const-string v3, "NebulaXKernel:Permission"

    if-eqz v1, :cond_0

    .line 40
    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/nebulax/kernel/security/AccessControlManagement;->needPermissionCheck(Lcom/alipay/mobile/nebulax/kernel/security/Accessor;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    const-string p1, "not need check permission"

    invoke-static {v3, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return v2

    .line 45
    :cond_0
    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/kernel/security/Accessor;->usePermissions()Ljava/util/List;

    move-result-object v1

    .line 46
    iget-object v4, p0, Lcom/alipay/mobile/nebulax/kernel/security/internal/DefaultAccessController;->accessControlManagement:Lcom/alipay/mobile/nebulax/kernel/security/AccessControlManagement;

    if-eqz v4, :cond_1

    .line 47
    invoke-interface {v4, p1}, Lcom/alipay/mobile/nebulax/kernel/security/AccessControlManagement;->manageAccessorGroup(Lcom/alipay/mobile/nebulax/kernel/security/Accessor;)Lcom/alipay/mobile/nebulax/kernel/security/Group;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/kernel/security/internal/DefaultAccessController;->accessControlManagement:Lcom/alipay/mobile/nebulax/kernel/security/AccessControlManagement;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebulax/kernel/security/AccessControlManagement;->manageAccessorPermissions(Lcom/alipay/mobile/nebulax/kernel/security/Accessor;)Ljava/util/List;

    move-result-object v1

    .line 50
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 52
    if-nez v1, :cond_2

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebulax/kernel/security/Guard;

    .line 56
    invoke-interface {v5}, Lcom/alipay/mobile/nebulax/kernel/security/Guard;->permit()Lcom/alipay/mobile/nebulax/kernel/security/Permission;

    move-result-object v6

    .line 57
    if-nez v6, :cond_3

    .line 59
    goto :goto_0

    .line 61
    :cond_3
    if-eqz v0, :cond_8

    .line 64
    invoke-direct {p0, v6, v0}, Lcom/alipay/mobile/nebulax/kernel/security/internal/DefaultAccessController;->checkGroup(Lcom/alipay/mobile/nebulax/kernel/security/Permission;Lcom/alipay/mobile/nebulax/kernel/security/Group;)Z

    move-result v7

    const-string v8, "]"

    const-string v9, "access"

    if-eqz v7, :cond_4

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has group permission ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/alipay/mobile/nebulax/kernel/security/Permission;->authority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] ,group is ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/kernel/security/Group;->groupName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    goto :goto_0

    .line 70
    :cond_4
    invoke-direct {p0, v1, v6}, Lcom/alipay/mobile/nebulax/kernel/security/internal/DefaultAccessController;->check(Ljava/util/List;Lcom/alipay/mobile/nebulax/kernel/security/Permission;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has single permission ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/alipay/mobile/nebulax/kernel/security/Permission;->authority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    goto :goto_0

    .line 74
    :cond_5
    iget-object v7, p0, Lcom/alipay/mobile/nebulax/kernel/security/internal/DefaultAccessController;->accessControlManagement:Lcom/alipay/mobile/nebulax/kernel/security/AccessControlManagement;

    if-eqz v7, :cond_6

    .line 75
    invoke-interface {v7, v6, p1}, Lcom/alipay/mobile/nebulax/kernel/security/AccessControlManagement;->customPermissionCheck(Lcom/alipay/mobile/nebulax/kernel/security/Permission;Lcom/alipay/mobile/nebulax/kernel/security/Accessor;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has custom permission ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/alipay/mobile/nebulax/kernel/security/Permission;->authority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    goto/16 :goto_0

    .line 80
    :cond_6
    instance-of v7, v6, Lcom/alipay/mobile/nebulax/kernel/security/Inquirer;

    if-eqz v7, :cond_7

    .line 81
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    goto/16 :goto_0

    .line 84
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " no permission:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/alipay/mobile/nebulax/kernel/security/Permission;->authority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " when access "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance p2, Lcom/alipay/mobile/nebulax/kernel/security/AccessControlException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/alipay/mobile/nebulax/kernel/security/Permission;->authority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alipay/mobile/nebulax/kernel/security/AccessControlException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 62
    :cond_8
    new-instance p2, Lcom/alipay/mobile/nebulax/kernel/security/AccessControlException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "the "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not in any group."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alipay/mobile/nebulax/kernel/security/AccessControlException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 89
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 90
    return v2

    .line 92
    :cond_a
    invoke-direct {p0, p1, v4, p3}, Lcom/alipay/mobile/nebulax/kernel/security/internal/DefaultAccessController;->apply(Lcom/alipay/mobile/nebulax/kernel/security/Accessor;Ljava/util/List;Lcom/alipay/mobile/nebulax/kernel/security/AccessController$ApplyCallback;)V

    .line 93
    const/4 p1, 0x1

    return p1
.end method

.method public setAccessControlManagement(Lcom/alipay/mobile/nebulax/kernel/security/AccessControlManagement;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/security/internal/DefaultAccessController;->accessControlManagement:Lcom/alipay/mobile/nebulax/kernel/security/AccessControlManagement;

    .line 34
    return-void
.end method
