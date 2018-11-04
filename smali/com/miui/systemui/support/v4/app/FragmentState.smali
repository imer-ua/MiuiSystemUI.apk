.class final Lcom/miui/systemui/support/v4/app/FragmentState;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/systemui/support/v4/app/FragmentState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/systemui/support/v4/app/FragmentState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mArguments:Landroid/os/Bundle;

.field final mClassName:Ljava/lang/String;

.field final mContainerId:I

.field final mDetached:Z

.field final mFragmentId:I

.field final mFromLayout:Z

.field final mHidden:Z

.field final mIndex:I

.field mInstance:Lcom/miui/systemui/support/v4/app/Fragment;

.field final mRetainInstance:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/miui/systemui/support/v4/app/FragmentState$1;

    invoke-direct {v0}, Lcom/miui/systemui/support/v4/app/FragmentState$1;-><init>()V

    .line 159
    sput-object v0, Lcom/miui/systemui/support/v4/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mIndex:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mFromLayout:Z

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mFragmentId:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mContainerId:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mTag:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mRetainInstance:Z

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mDetached:Z

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mHidden:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 89
    return-void

    :cond_0
    move v0, v2

    .line 92
    goto :goto_0

    :cond_1
    move v0, v2

    .line 96
    goto :goto_1

    :cond_2
    move v0, v2

    .line 97
    goto :goto_2

    :cond_3
    move v1, v2

    .line 99
    goto :goto_3
.end method

.method public constructor <init>(Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "frag"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;

    .line 78
    iget v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mIndex:I

    iput v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mIndex:I

    .line 79
    iget-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mFromLayout:Z

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mFromLayout:Z

    .line 80
    iget v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentId:I

    iput v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mFragmentId:I

    .line 81
    iget v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mContainerId:I

    iput v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mContainerId:I

    .line 82
    iget-object v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mTag:Ljava/lang/String;

    .line 83
    iget-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mRetainInstance:Z

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mRetainInstance:Z

    .line 84
    iget-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mDetached:Z

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mDetached:Z

    .line 85
    iget-object v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    .line 86
    iget-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mHidden:Z

    .line 76
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public instantiate(Lcom/miui/systemui/support/v4/app/FragmentHostCallback;Lcom/miui/systemui/support/v4/app/FragmentContainer;Lcom/miui/systemui/support/v4/app/Fragment;Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;)Lcom/miui/systemui/support/v4/app/Fragment;
    .locals 4
    .param p1, "host"    # Lcom/miui/systemui/support/v4/app/FragmentHostCallback;
    .param p2, "container"    # Lcom/miui/systemui/support/v4/app/FragmentContainer;
    .param p3, "parent"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p4, "childNonConfig"    # Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;

    .prologue
    .line 105
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mInstance:Lcom/miui/systemui/support/v4/app/Fragment;

    if-nez v1, :cond_2

    .line 106
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 111
    :cond_0
    if-eqz p2, :cond_3

    .line 112
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p2, v0, v1, v2}, Lcom/miui/systemui/support/v4/app/FragmentContainer;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/miui/systemui/support/v4/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mInstance:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 117
    :goto_0
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 119
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mInstance:Lcom/miui/systemui/support/v4/app/Fragment;

    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v2, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mInstance:Lcom/miui/systemui/support/v4/app/Fragment;

    iget v2, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mIndex:I

    invoke-virtual {v1, v2, p3}, Lcom/miui/systemui/support/v4/app/Fragment;->setIndex(ILcom/miui/systemui/support/v4/app/Fragment;)V

    .line 122
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mInstance:Lcom/miui/systemui/support/v4/app/Fragment;

    iget-boolean v2, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mFromLayout:Z

    iput-boolean v2, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mFromLayout:Z

    .line 123
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mInstance:Lcom/miui/systemui/support/v4/app/Fragment;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mRestored:Z

    .line 124
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mInstance:Lcom/miui/systemui/support/v4/app/Fragment;

    iget v2, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mFragmentId:I

    iput v2, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentId:I

    .line 125
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mInstance:Lcom/miui/systemui/support/v4/app/Fragment;

    iget v2, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mContainerId:I

    iput v2, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mContainerId:I

    .line 126
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mInstance:Lcom/miui/systemui/support/v4/app/Fragment;

    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mTag:Ljava/lang/String;

    iput-object v2, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 127
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mInstance:Lcom/miui/systemui/support/v4/app/Fragment;

    iget-boolean v2, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mRetainInstance:Z

    iput-boolean v2, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mRetainInstance:Z

    .line 128
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mInstance:Lcom/miui/systemui/support/v4/app/Fragment;

    iget-boolean v2, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mDetached:Z

    iput-boolean v2, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mDetached:Z

    .line 129
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mInstance:Lcom/miui/systemui/support/v4/app/Fragment;

    iget-boolean v2, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mHidden:Z

    iput-boolean v2, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    .line 130
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mInstance:Lcom/miui/systemui/support/v4/app/Fragment;

    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    iput-object v2, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    .line 132
    sget-boolean v1, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "FragmentManager"

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Instantiated fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mInstance:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local v0    # "context":Landroid/content/Context;
    :cond_2
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mInstance:Lcom/miui/systemui/support/v4/app/Fragment;

    iput-object p4, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mChildNonConfig:Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;

    .line 136
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mInstance:Lcom/miui/systemui/support/v4/app/Fragment;

    return-object v1

    .line 114
    .restart local v0    # "context":Landroid/content/Context;
    :cond_3
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/miui/systemui/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/miui/systemui/support/v4/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mInstance:Lcom/miui/systemui/support/v4/app/Fragment;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mFromLayout:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mFragmentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mContainerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mRetainInstance:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mDetached:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 155
    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mHidden:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 145
    return-void

    :cond_0
    move v0, v2

    .line 148
    goto :goto_0

    :cond_1
    move v0, v2

    .line 152
    goto :goto_1

    :cond_2
    move v0, v2

    .line 153
    goto :goto_2

    :cond_3
    move v1, v2

    .line 155
    goto :goto_3
.end method