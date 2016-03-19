.class public Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;
.super Ljava/lang/Object;
.source "ContactLinkProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/databases/ContactLinkProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "contactInfoItem"
.end annotation


# instance fields
.field public contactId:Ljava/lang/String;

.field public data:[Ljava/lang/String;

.field public dataCount:I

.field public dataType:[I

.field public mimeType:[Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;->data:[Ljava/lang/String;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;->dataType:[I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;->mimeType:[Ljava/lang/String;

    return-void
.end method
