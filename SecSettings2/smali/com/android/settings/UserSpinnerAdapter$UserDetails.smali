.class public Lcom/android/settings/UserSpinnerAdapter$UserDetails;
.super Ljava/lang/Object;
.source "UserSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserSpinnerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserDetails"
.end annotation


# instance fields
.field private final icon:Landroid/graphics/drawable/Drawable;

.field private final mUserHandle:Landroid/os/UserHandle;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Landroid/os/UserManager;Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0a0e3d

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->name:Ljava/lang/String;

    const v2, 0x10803d2

    invoke-virtual {p3, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->icon:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void

    :cond_0
    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->name:Ljava/lang/String;

    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/UserSpinnerAdapter$UserDetails;)Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/UserSpinnerAdapter$UserDetails;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/UserSpinnerAdapter$UserDetails;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->name:Ljava/lang/String;

    return-object v0
.end method
