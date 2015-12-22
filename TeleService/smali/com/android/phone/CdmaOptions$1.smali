.class Lcom/android/phone/CdmaOptions$1;
.super Ljava/lang/Object;
.source "CdmaOptions.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CdmaOptions;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CdmaOptions$1;->this$0:Lcom/android/phone/CdmaOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    const/4 v5, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APN_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, ":settings:show_fragment_as_subsetting"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CdmaOptions$1;->this$0:Lcom/android/phone/CdmaOptions;

    # getter for: Lcom/android/phone/CdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;
    invoke-static {v2}, Lcom/android/phone/CdmaOptions;->access$000(Lcom/android/phone/CdmaOptions;)Landroid/preference/PreferenceActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v5

    :catch_0
    move-exception v0

    const-string v2, "CdmaOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivity() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
