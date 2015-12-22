.class Lcom/android/settings/MediaFormatSdPreference$2;
.super Ljava/lang/Object;
.source "MediaFormatSdPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MediaFormatSdPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MediaFormatSdPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/MediaFormatSdPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/MediaFormatSdPreference$2;->this$0:Lcom/android/settings/MediaFormatSdPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/MediaFormatSdPreference$2;->this$0:Lcom/android/settings/MediaFormatSdPreference;

    invoke-virtual {v3}, Lcom/android/settings/MediaFormatSdPreference;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "storage_volume"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    const-string v3, "storage_volume"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/MediaFormatSdPreference$2;->this$0:Lcom/android/settings/MediaFormatSdPreference;

    # getter for: Lcom/android/settings/MediaFormatSdPreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/MediaFormatSdPreference;->access$200(Lcom/android/settings/MediaFormatSdPreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/settings/MediaFormatSdPreference$2;->this$0:Lcom/android/settings/MediaFormatSdPreference;

    invoke-virtual {v3}, Lcom/android/settings/MediaFormatSdPreference;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0
.end method
