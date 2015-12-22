.class final Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayDeviceInfo"
.end annotation


# instance fields
.field devType:I

.field deviceId:Ljava/lang/CharSequence;

.field deviceName:Ljava/lang/CharSequence;

.field displayLabel:Ljava/lang/CharSequence;

.field iconType:I

.field netType:I

.field number:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->netType:I

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->devType:I

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->displayLabel:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceName:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceId:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->number:Ljava/lang/CharSequence;

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->iconType:I

    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->netType:I

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->devType:I

    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->displayLabel:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceName:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceId:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->number:Ljava/lang/CharSequence;

    iput p6, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->iconType:I

    iput p7, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->netType:I

    iput p8, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->devType:I

    return-void
.end method
