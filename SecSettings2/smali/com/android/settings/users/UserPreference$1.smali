.class Lcom/android/settings/users/UserPreference$1;
.super Ljava/lang/Object;
.source "UserPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/UserPreference$1;->this$0:Lcom/android/settings/users/UserPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/users/UserPreference$1;->this$0:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v1}, Lcom/android/settings/users/UserPreference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/users/UserPreference$1;->this$0:Lcom/android/settings/users/UserPreference;

    # getter for: Lcom/android/settings/users/UserPreference;->mPref:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/users/UserPreference;->access$000(Lcom/android/settings/users/UserPreference;)Landroid/preference/Preference;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method
