.class Lcom/ime/implement/setting/Xt9HwrDialogPreference$ImageText;
.super Ljava/lang/Object;
.source "Xt9HwrDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/Xt9HwrDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageText"
.end annotation


# instance fields
.field private mImage:Landroid/graphics/drawable/Drawable;

.field private mThickness:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ime/implement/setting/Xt9HwrDialogPreference$ImageText;->mImage:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/ime/implement/setting/Xt9HwrDialogPreference$ImageText;->mThickness:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/Xt9HwrDialogPreference$ImageText;->mThickness:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/Xt9HwrDialogPreference$ImageText;->mImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
