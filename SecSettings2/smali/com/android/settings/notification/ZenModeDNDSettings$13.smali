.class Lcom/android/settings/notification/ZenModeDNDSettings$13;
.super Ljava/lang/Object;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeDNDSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeDNDSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$13;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$13;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mDisableListeners:Z
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$300(Lcom/android/settings/notification/ZenModeDNDSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v2

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$13;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # invokes: Lcom/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$1000(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dnd_allowexception"

    if-eqz v0, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
