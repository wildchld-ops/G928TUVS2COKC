.class public Lcom/android/incallui/coreapps/CoreAppsContact;
.super Ljava/lang/Object;
.source "CoreAppsContact.java"


# instance fields
.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mName:Ljava/lang/String;

.field public mNumber:Ljava/lang/String;

.field public mPresenceMode:I

.field public mStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/coreapps/CoreAppsContact;->mPresenceMode:I

    iput-object p1, p0, Lcom/android/incallui/coreapps/CoreAppsContact;->mNumber:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsContact;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
