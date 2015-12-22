.class Lcom/android/settings/AssistantMenuPreferenceFragment$5;
.super Ljava/lang/Object;
.source "AssistantMenuPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AssistantMenuPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AssistantMenuPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AssistantMenuPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$5;->this$0:Lcom/android/settings/AssistantMenuPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 5

    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$5;->this$0:Lcom/android/settings/AssistantMenuPreferenceFragment;

    # getter for: Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/DropDownPreference;
    invoke-static {v2}, Lcom/android/settings/AssistantMenuPreferenceFragment;->access$500(Lcom/android/settings/AssistantMenuPreferenceFragment;)Lcom/android/settings/DropDownPreference;

    move-result-object v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/DropDownPreference;->setSelectedItem(IZ)V

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$5;->this$0:Lcom/android/settings/AssistantMenuPreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assistant_menu_pointer_size"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.app.shareaccessibilitysettings.SHARING_COMPLETE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$5;->this$0:Lcom/android/settings/AssistantMenuPreferenceFragment;

    # getter for: Lcom/android/settings/AssistantMenuPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/AssistantMenuPreferenceFragment;->access$300(Lcom/android/settings/AssistantMenuPreferenceFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v2, 0x1

    return v2
.end method
