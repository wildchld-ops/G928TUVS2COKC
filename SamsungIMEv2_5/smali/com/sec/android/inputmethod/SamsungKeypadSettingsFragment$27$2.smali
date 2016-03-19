.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$27$2;
.super Ljava/lang/Object;
.source "SamsungKeypadSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$27;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$27;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$27;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$27$2;->this$1:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$27;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
