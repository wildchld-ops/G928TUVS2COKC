.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$38;
.super Ljava/lang/Object;
.source "SamsungKeypadSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$38;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$38;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z
    invoke-static {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$300(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$38;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mListener:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$OnDetailMenuSelected;

    invoke-interface {v0, p1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$OnDetailMenuSelected;->onDetailMenuSeleted(Landroid/preference/Preference;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
