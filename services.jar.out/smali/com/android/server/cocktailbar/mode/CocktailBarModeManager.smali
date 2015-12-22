.class public Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;
.super Ljava/lang/Object;
.source "CocktailBarModeManager.java"

# interfaces
.implements Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;


# static fields
.field public static final COCKTAIL_MODE_KNOX:I = 0x2

.field public static final COCKTAIL_MODE_KNOX_COM:I = 0x3

.field public static final COCKTAIL_MODE_NORMAL:I = 0x1

.field public static final COCKTAIL_MODE_PRIVATE_MODE:I = 0x10000

.field public static final COCKTAIL_MODE_UNKNOWN:I = 0x0

.field public static final COCKTAIL_TYPE_ALONE:I = 0x2

.field public static final COCKTAIL_TYPE_OVERLAY:I = 0x1

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCocktailBarModeId:I

.field private mContext:Landroid/content/Context;

.field private mKnoxMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

.field private mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

.field private mNextPrivateModeId:I

.field private mNormalMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

.field private mPrivateModeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/cocktailbar/mode/CocktailBarMode;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivateModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cocktailbar/mode/CocktailBarMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    const-class v1, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V
    .locals 7

    const/high16 v6, 0x10000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModeMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    new-instance v0, Lcom/android/server/cocktailbar/mode/NormalMode;

    invoke-direct {v0}, Lcom/android/server/cocktailbar/mode/NormalMode;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNormalMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    new-instance v0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;

    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    iget-object v5, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    move-object v3, p3

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mKnoxMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    new-instance v0, Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;

    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    or-int/2addr v2, v6

    invoke-direct {v0, v1, v2, p3, p0}, Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    new-instance v0, Lcom/android/server/cocktailbar/mode/PrivateRestrictMode;

    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    or-int/2addr v2, v6

    invoke-direct {v0, v1, v2, p3, p0}, Lcom/android/server/cocktailbar/mode/PrivateRestrictMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    new-instance v0, Lcom/android/server/cocktailbar/mode/PrivateCarMode;

    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    or-int/2addr v2, v6

    invoke-direct {v0, v1, v2, p3, p0}, Lcom/android/server/cocktailbar/mode/PrivateCarMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    new-instance v0, Lcom/android/server/cocktailbar/mode/PrivateMirroLinkMode;

    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    or-int/2addr v2, v6

    invoke-direct {v0, v1, v2, p3, p0}, Lcom/android/server/cocktailbar/mode/PrivateMirroLinkMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    new-instance v0, Lcom/android/server/cocktailbar/mode/PrivateKidsMode;

    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    or-int/2addr v2, v6

    invoke-direct {v0, v1, v2, p4, p0}, Lcom/android/server/cocktailbar/mode/PrivateKidsMode;-><init>(Landroid/content/Context;ILandroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    new-instance v0, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;

    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    or-int/2addr v2, v6

    invoke-direct {v0, v1, v2, p4, p0}, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;-><init>(Landroid/content/Context;ILandroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    new-instance v0, Lcom/android/server/cocktailbar/mode/PrivateKioskMDMMode;

    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    or-int/2addr v2, v6

    invoke-direct {v0, v1, v2, p3, p0}, Lcom/android/server/cocktailbar/mode/PrivateKioskMDMMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mKnoxMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    return-void
.end method

.method private setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModeMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModeMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setupPrivateMode : exist duplicated privateMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    .locals 4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object v3, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    invoke-interface {v2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v3

    if-ne v3, p1, :cond_0

    move-object v1, v2

    :cond_1
    :goto_0
    :pswitch_0
    return-object v1

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNormalMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNormalMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mKnoxMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCocktailBarMode(Ljava/lang/String;)Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    return-object v0
.end method

.method public getCocktailBarModeName(I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    invoke-interface {v1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-interface {v1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCurrentModeId()I
    .locals 1

    iget v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    return v0
.end method

.method public isDisableCocktailBarMode(I)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getCocktailBarType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    invoke-interface {v3}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getRegistrationType()I

    move-result v5

    if-ne v5, v4, :cond_0

    invoke-interface {v3, p1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->onBroadcastReceived(Landroid/content/Intent;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :goto_1
    :pswitch_0
    return v4

    :pswitch_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {p0, v5, v3}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onSetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    goto :goto_1

    :pswitch_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {p0, v5, v3}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onResetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    goto :goto_1

    :pswitch_3
    const/4 v5, 0x4

    if-ne v2, v5, :cond_1

    move v0, v4

    :cond_1
    invoke-interface {v3}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v5

    invoke-virtual {p0, v0, v5}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->restrictMode(ZI)V

    goto :goto_1

    :cond_2
    move v4, v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onResetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V
    .locals 3

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v1

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onResetMode(IILjava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    :cond_0
    return-void
.end method

.method public onSetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V
    .locals 5

    if-eqz p2, :cond_1

    iget v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    invoke-virtual {p0, v1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    iget v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    invoke-interface {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onUnsetMode(IILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v2

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getCocktailType()I

    move-result v4

    invoke-interface {v1, p1, v2, v3, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onSetMode(IILjava/lang/String;I)V

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v1

    iput v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    :cond_1
    return-void
.end method

.method public onSetModeForcely(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V
    .locals 5

    if-eqz p2, :cond_1

    iget v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    invoke-virtual {p0, v1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    iget v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    invoke-interface {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onUnsetMode(IILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v2

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getCocktailType()I

    move-result v4

    invoke-interface {v1, p1, v2, v3, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onSetMode(IILjava/lang/String;I)V

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v1

    iput v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    :cond_1
    return-void
.end method

.method public refreshCocktailBarMode()I
    .locals 4

    iget v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    iget-object v3, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    invoke-interface {v2, v1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->renewMode(I)I

    move-result v1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public resetMode(II)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onResetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    return-void
.end method

.method public restrictMode(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onRestrictMode(ZI)V

    return-void
.end method

.method public setMode(II)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onSetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    return-void
.end method
