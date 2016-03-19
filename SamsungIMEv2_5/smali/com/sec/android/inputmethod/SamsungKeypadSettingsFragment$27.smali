.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$27;
.super Ljava/lang/Object;
.source "SamsungKeypadSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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

    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$27;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d03be

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0d00b5

    new-instance v4, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$27$1;

    invoke-direct {v4, p0, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$27$1;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$27;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0d0154

    new-instance v4, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$27$2;

    invoke-direct {v4, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$27$2;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$27;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return v5
.end method
