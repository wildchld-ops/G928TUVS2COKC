.class public Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;
.super Ljava/lang/Object;
.source "CocktailBarCocktailPolicyManager.java"

# interfaces
.implements Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;


# instance fields
.field private mCocktailPolicys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdatableCocktailMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    const-class v1, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->mInstance:Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->mCocktailPolicys:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->mUpdatableCocktailMap:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualHighPriorityPolicy;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualHighPriorityPolicy;-><init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->setupCocktailPolicy(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;)V

    new-instance v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualPolicy;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualPolicy;-><init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->setupCocktailPolicy(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;)V

    new-instance v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPrivatePolicy;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPrivatePolicy;-><init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->setupCocktailPolicy(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;)V

    new-instance v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailNativePolicy;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailNativePolicy;-><init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->setupCocktailPolicy(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;)V

    new-instance v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailNormalPolicy;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailNormalPolicy;-><init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->setupCocktailPolicy(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;)V

    return-void
.end method

.method private findMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->mCocktailPolicys:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;->isMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "findMatchedPolicy: find policy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;->getCocktailType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v2, v1

    :cond_2
    return-object v2
.end method

.method public static getInstance()Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;
    .locals 1

    sget-object v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->mInstance:Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;

    invoke-direct {v0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;-><init>()V

    sput-object v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->mInstance:Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;

    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->mInstance:Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;

    return-object v0
.end method

.method private setupCocktailPolicy(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->mCocktailPolicys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public canCloseCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    sget-object v2, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "canCloseCocktail: cocktail is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->findMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-virtual {p0, v1, p3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v1

    invoke-interface {v0, p1, p3, v1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;->isAcceptCloseCocktail(Lcom/samsung/android/cocktailbar/Cocktail;IZ)Z

    move-result v1

    goto :goto_0
.end method

.method public canSendUpdateIntent(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canShowCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    sget-object v2, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "canShowCocktail: cocktail is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->findMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-virtual {p0, v1, p3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v1

    invoke-interface {v0, p1, p3, v1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;->isAcceptShowCocktail(Lcom/samsung/android/cocktailbar/Cocktail;IZ)Z

    move-result v1

    goto :goto_0
.end method

.method public canUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_1

    sget-object v2, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "canUpdateCocktail: cocktail is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->findMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-virtual {p0, v1, p3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;->isAcceptUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;IZ)Z

    move-result v1

    goto :goto_0
.end method

.method public canUpdateFeeds(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    sget-object v1, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "canUpdateFeeds: cocktail is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public disableUpdatableCocktail(II)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->mUpdatableCocktailMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;->disableUpdate(I)V

    :cond_0
    return-void
.end method

.method public enableUpdatableCocktail(II)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->mUpdatableCocktailMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;

    invoke-direct {v0, p2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->mUpdatableCocktailMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;->enableUpdate(I)V

    return-void
.end method

.method public isUpdatedCocktail(II)Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->mUpdatableCocktailMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;->isUpdatedCocktail(I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDisableUpdatableCocktail(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->disableUpdatableCocktail(II)V

    return-void
.end method

.method public onEanbleUpdatableCocktail(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->enableUpdatableCocktail(II)V

    return-void
.end method
