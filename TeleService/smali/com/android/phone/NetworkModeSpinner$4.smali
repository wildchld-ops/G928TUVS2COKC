.class Lcom/android/phone/NetworkModeSpinner$4;
.super Ljava/lang/Object;
.source "NetworkModeSpinner.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkModeSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModeSpinner;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModeSpinner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkModeSpinner$4;->this$0:Lcom/android/phone/NetworkModeSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkModeSpinner$4;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # invokes: Lcom/android/phone/NetworkModeSpinner;->openListPopupWindow()V
    invoke-static {v0}, Lcom/android/phone/NetworkModeSpinner;->access$200(Lcom/android/phone/NetworkModeSpinner;)V

    const/4 v0, 0x1

    return v0
.end method
