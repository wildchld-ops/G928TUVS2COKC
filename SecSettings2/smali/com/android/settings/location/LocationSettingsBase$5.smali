.class Lcom/android/settings/location/LocationSettingsBase$5;
.super Ljava/lang/Object;
.source "LocationSettingsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/LocationSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationSettingsBase;

.field final synthetic val$mode:I


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/location/LocationSettingsBase$5;->this$0:Lcom/android/settings/location/LocationSettingsBase;

    iget v0, p0, Lcom/android/settings/location/LocationSettingsBase$5;->val$mode:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/location/LocationSettingsBase;->setLocationMode(I)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/settings/location/LocationSettingsBase$5;->val$mode:I

    goto :goto_0
.end method
